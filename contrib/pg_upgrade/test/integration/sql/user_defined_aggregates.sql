-- Basic user defined aggregate
CREATE AGGREGATE sum_plus_42 (
   sfunc1 = int4pl, basetype = int4, stype1 = int4, initcond1 = '42'
);

-- Polymorphic user defined aggregate
CREATE AGGREGATE array_accum (anyelement)
(
    sfunc = array_append,
    stype = anyarray,
    initcond = '{}'
);
