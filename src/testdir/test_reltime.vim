" Tests for reltime()

CheckFeature reltime

func Test_reltime()
  let g:test_is_flaky = 1
  let now = reltime()
  sleep 10m
  let later = reltime()
  let elapsed = now->reltime()
  call assert_true(reltimestr(elapsed) =~ '0\.0')
  call assert_true(elapsed->reltimestr() != '0.0')
  call assert_true(reltimefloat(elapsed) < 0.1)
  call assert_true(elapsed->reltimefloat() > 0.0)

  let same = reltime(now, now)
  call assert_equal('0.000', split(reltimestr(same))[0][:4])
  call assert_equal(0.0, reltimefloat(same))

  let differs = reltime(now, later)
  call assert_true(reltimestr(differs) =~ '0\.0')
  call assert_true(reltimestr(differs) != '0.0')
  call assert_true(reltimefloat(differs) < 0.1)
  call assert_true(reltimefloat(differs) > 0.0)

  call assert_equal([], reltime({}))
  call assert_equal([], reltime({}, {}))
endfunc

" vim: shiftwidth=2 sts=2 expandtab
