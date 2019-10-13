(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$jjj (func (param i64 i64) (result i64)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$viij (func (param i32 i32 i64)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ji (func (param i32) (result i64)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 56) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 112) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 168) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 224) "\07\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\91\04\00\00\02\00\00\001\00\00\00\02\00\00\00\11\01\00\00\02\00\00\00\10\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/index/Int32Array_ID i32 (i32.const 3))
 (global $assembly/index/Uint8Array_ID i32 (i32.const 4))
 (global $assembly/index/WINDOW_SIZE i32 (i32.const 64))
 (global $assembly/index/tables_initialized (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $assembly/index/modTable (mut i32) (i32.const 0))
 (global $assembly/index/outTable (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 224))
 (global $~lib/heap/__heap_base i32 (i32.const 284))
 (global $assembly/index/Rabin i32 (i32.const 6))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "Int32Array_ID" (global $assembly/index/Int32Array_ID))
 (export "Uint8Array_ID" (global $assembly/index/Uint8Array_ID))
 (export "degree" (func $assembly/index/degree))
 (export "mod" (func $assembly/index/mod))
 (export "Rabin" (global $assembly/index/Rabin))
 (export "Rabin#get:wpos" (func $Rabin#get:wpos))
 (export "Rabin#set:wpos" (func $Rabin#set:wpos))
 (export "Rabin#get:count" (func $Rabin#get:count))
 (export "Rabin#set:count" (func $Rabin#set:count))
 (export "Rabin#get:pos" (func $Rabin#get:pos))
 (export "Rabin#set:pos" (func $Rabin#set:pos))
 (export "Rabin#get:start" (func $Rabin#get:start))
 (export "Rabin#set:start" (func $Rabin#set:start))
 (export "Rabin#get:digest" (func $Rabin#get:digest))
 (export "Rabin#set:digest" (func $Rabin#set:digest))
 (export "Rabin#get:chunk_start" (func $Rabin#get:chunk_start))
 (export "Rabin#set:chunk_start" (func $Rabin#set:chunk_start))
 (export "Rabin#get:chunk_length" (func $Rabin#get:chunk_length))
 (export "Rabin#set:chunk_length" (func $Rabin#set:chunk_length))
 (export "Rabin#get:chunk_cut_fingerprint" (func $Rabin#get:chunk_cut_fingerprint))
 (export "Rabin#set:chunk_cut_fingerprint" (func $Rabin#set:chunk_cut_fingerprint))
 (export "Rabin#get:polynomial" (func $Rabin#get:polynomial))
 (export "Rabin#set:polynomial" (func $Rabin#set:polynomial))
 (export "Rabin#get:polynomial_degree" (func $Rabin#get:polynomial_degree))
 (export "Rabin#set:polynomial_degree" (func $Rabin#set:polynomial_degree))
 (export "Rabin#get:polynomial_shift" (func $Rabin#get:polynomial_shift))
 (export "Rabin#set:polynomial_shift" (func $Rabin#set:polynomial_shift))
 (export "Rabin#get:average_bits" (func $Rabin#get:average_bits))
 (export "Rabin#set:average_bits" (func $Rabin#set:average_bits))
 (export "Rabin#get:minsize" (func $Rabin#get:minsize))
 (export "Rabin#set:minsize" (func $Rabin#set:minsize))
 (export "Rabin#get:maxsize" (func $Rabin#get:maxsize))
 (export "Rabin#set:maxsize" (func $Rabin#set:maxsize))
 (export "Rabin#get:mask" (func $Rabin#get:mask))
 (export "Rabin#set:mask" (func $Rabin#set:mask))
 (export "Rabin#get:window" (func $Rabin#get:window))
 (export "Rabin#set:window" (func $Rabin#set:window))
 (export "Rabin#constructor" (func $assembly/index/Rabin#constructor))
 (export "Rabin#fingerprint" (func $assembly/index/Rabin#fingerprint))
 (start $start)
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  i32.const -1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect (; 5 ;) (type $FUNCSIG$v)
  nop
 )
 (func $~lib/memory/memory.fill (; 6 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   block $break|0
    loop $continue|0
     local.get $3
     i32.const 32
     i32.ge_u
     i32.eqz
     br_if $break|0
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $continue|0
    end
    unreachable
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 24
   i32.const 72
   i32.const 23
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint64Array#constructor (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 12
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $start:assembly/index (; 9 ;) (type $FUNCSIG$v)
  i32.const 0
  i32.const 256
  call $~lib/typedarray/Uint64Array#constructor
  global.set $assembly/index/modTable
  i32.const 0
  i32.const 256
  call $~lib/typedarray/Uint64Array#constructor
  global.set $assembly/index/outTable
 )
 (func $assembly/index/degree (; 10 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i64)
  (local $2 i32)
  i64.const -9223372036854775808
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    i32.const 64
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $0
    i64.and
    i64.const 0
    i64.ne
    if
     i32.const 63
     local.get $2
     i32.sub
     return
    end
    local.get $1
    i64.const 1
    i64.shr_u
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  i32.const -1
 )
 (func $assembly/index/mod (; 11 ;) (type $FUNCSIG$jjj) (param $0 i64) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  block $break|2
   loop $continue|2
    block $assembly/index/degree|inlined.0 (result i32)
     local.get $0
     local.set $3
     i64.const -9223372036854775808
     local.set $4
     block $break|0
      i32.const 0
      local.set $5
      loop $loop|0
       local.get $5
       i32.const 64
       i32.lt_s
       i32.eqz
       br_if $break|0
       local.get $4
       local.get $3
       i64.and
       i64.const 0
       i64.ne
       if
        i32.const 63
        local.get $5
        i32.sub
        br $assembly/index/degree|inlined.0
       end
       local.get $4
       i64.const 1
       i64.shr_u
       local.set $4
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $loop|0
      end
      unreachable
     end
     i32.const -1
    end
    block $assembly/index/degree|inlined.1 (result i32)
     local.get $1
     local.set $3
     i64.const -9223372036854775808
     local.set $4
     block $break|1
      i32.const 0
      local.set $5
      loop $loop|1
       local.get $5
       i32.const 64
       i32.lt_s
       i32.eqz
       br_if $break|1
       local.get $4
       local.get $3
       i64.and
       i64.const 0
       i64.ne
       if
        i32.const 63
        local.get $5
        i32.sub
        br $assembly/index/degree|inlined.1
       end
       local.get $4
       i64.const 1
       i64.shr_u
       local.set $4
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $loop|1
      end
      unreachable
     end
     i32.const -1
    end
    i32.sub
    local.tee $2
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|2
    local.get $0
    local.get $1
    local.get $2
    i64.extend_i32_s
    i64.shl
    i64.xor
    local.set $0
    br $continue|2
   end
   unreachable
  end
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 12
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint64Array#__uset (; 13 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $~lib/typedarray/Uint8Array#__get (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 128
   i32.const 184
   i32.const 148
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/typedarray/Uint8Array#__set (; 15 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 128
   i32.const 184
   i32.const 159
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Uint64Array#__uget (; 16 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $assembly/index/rabin_init (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  global.get $assembly/index/tables_initialized
  i32.eqz
  if
   local.get $0
   call $~lib/rt/stub/__retain
   local.set $1
   local.get $1
   i64.load offset=64
   local.set $2
   block $break|0
    i32.const 0
    local.set $3
    loop $loop|0
     local.get $3
     i32.const 256
     i32.lt_s
     i32.eqz
     br_if $break|0
     i64.const 0
     local.set $4
     local.get $4
     local.set $7
     local.get $3
     local.set $6
     local.get $2
     local.set $5
     local.get $7
     i64.const 8
     i64.shl
     local.set $7
     local.get $7
     local.get $6
     i32.const 255
     i32.and
     i64.extend_i32_u
     i64.or
     local.set $7
     local.get $7
     local.set $9
     local.get $5
     local.set $8
     block $break|3
      loop $continue|3
       block $assembly/index/degree|inlined.2 (result i32)
        local.get $9
        local.set $11
        i64.const -9223372036854775808
        local.set $12
        block $break|1
         i32.const 0
         local.set $13
         loop $loop|1
          local.get $13
          i32.const 64
          i32.lt_s
          i32.eqz
          br_if $break|1
          local.get $12
          local.get $11
          i64.and
          i64.const 0
          i64.ne
          if
           i32.const 63
           local.get $13
           i32.sub
           br $assembly/index/degree|inlined.2
          end
          local.get $12
          i64.const 1
          i64.shr_u
          local.set $12
          local.get $13
          i32.const 1
          i32.add
          local.set $13
          br $loop|1
         end
         unreachable
        end
        i32.const -1
       end
       block $assembly/index/degree|inlined.3 (result i32)
        local.get $8
        local.set $11
        i64.const -9223372036854775808
        local.set $12
        block $break|2
         i32.const 0
         local.set $13
         loop $loop|2
          local.get $13
          i32.const 64
          i32.lt_s
          i32.eqz
          br_if $break|2
          local.get $12
          local.get $11
          i64.and
          i64.const 0
          i64.ne
          if
           i32.const 63
           local.get $13
           i32.sub
           br $assembly/index/degree|inlined.3
          end
          local.get $12
          i64.const 1
          i64.shr_u
          local.set $12
          local.get $13
          i32.const 1
          i32.add
          local.set $13
          br $loop|2
         end
         unreachable
        end
        i32.const -1
       end
       i32.sub
       local.tee $10
       i32.const 0
       i32.ge_s
       i32.eqz
       br_if $break|3
       local.get $9
       local.get $8
       local.get $10
       i64.extend_i32_s
       i64.shl
       i64.xor
       local.set $9
       br $continue|3
      end
      unreachable
     end
     local.get $9
     local.set $4
     block $break|4
      i32.const 0
      local.set $6
      loop $loop|4
       local.get $6
       i32.const 63
       i32.lt_s
       i32.eqz
       br_if $break|4
       local.get $4
       local.set $12
       i32.const 0
       local.set $13
       local.get $2
       local.set $11
       local.get $12
       i64.const 8
       i64.shl
       local.set $12
       local.get $12
       local.get $13
       i64.extend_i32_u
       i64.or
       local.set $12
       local.get $12
       local.set $9
       local.get $11
       local.set $8
       block $break|7
        loop $continue|7
         block $assembly/index/degree|inlined.4 (result i32)
          local.get $9
          local.set $5
          i64.const -9223372036854775808
          local.set $7
          block $break|5
           i32.const 0
           local.set $14
           loop $loop|5
            local.get $14
            i32.const 64
            i32.lt_s
            i32.eqz
            br_if $break|5
            local.get $7
            local.get $5
            i64.and
            i64.const 0
            i64.ne
            if
             i32.const 63
             local.get $14
             i32.sub
             br $assembly/index/degree|inlined.4
            end
            local.get $7
            i64.const 1
            i64.shr_u
            local.set $7
            local.get $14
            i32.const 1
            i32.add
            local.set $14
            br $loop|5
           end
           unreachable
          end
          i32.const -1
         end
         block $assembly/index/degree|inlined.5 (result i32)
          local.get $8
          local.set $5
          i64.const -9223372036854775808
          local.set $7
          block $break|6
           i32.const 0
           local.set $14
           loop $loop|6
            local.get $14
            i32.const 64
            i32.lt_s
            i32.eqz
            br_if $break|6
            local.get $7
            local.get $5
            i64.and
            i64.const 0
            i64.ne
            if
             i32.const 63
             local.get $14
             i32.sub
             br $assembly/index/degree|inlined.5
            end
            local.get $7
            i64.const 1
            i64.shr_u
            local.set $7
            local.get $14
            i32.const 1
            i32.add
            local.set $14
            br $loop|6
           end
           unreachable
          end
          i32.const -1
         end
         i32.sub
         local.tee $10
         i32.const 0
         i32.ge_s
         i32.eqz
         br_if $break|7
         local.get $9
         local.get $8
         local.get $10
         i64.extend_i32_s
         i64.shl
         i64.xor
         local.set $9
         br $continue|7
        end
        unreachable
       end
       local.get $9
       local.set $4
       local.get $6
       i32.const 1
       i32.add
       local.set $6
       br $loop|4
      end
      unreachable
     end
     global.get $assembly/index/outTable
     local.get $3
     local.get $4
     call $~lib/typedarray/Uint64Array#__uset
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|0
    end
    unreachable
   end
   block $assembly/index/degree|inlined.6 (result i32)
    local.get $2
    local.set $5
    i64.const -9223372036854775808
    local.set $4
    block $break|8
     i32.const 0
     local.set $3
     loop $loop|8
      local.get $3
      i32.const 64
      i32.lt_s
      i32.eqz
      br_if $break|8
      local.get $4
      local.get $5
      i64.and
      i64.const 0
      i64.ne
      if
       i32.const 63
       local.get $3
       i32.sub
       br $assembly/index/degree|inlined.6
      end
      local.get $4
      i64.const 1
      i64.shr_u
      local.set $4
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $loop|8
     end
     unreachable
    end
    i32.const -1
   end
   i64.extend_i32_s
   local.set $4
   block $break|9
    i32.const 0
    local.set $3
    loop $loop|9
     local.get $3
     i32.const 256
     i32.lt_s
     i32.eqz
     br_if $break|9
     local.get $3
     i64.extend_i32_s
     local.get $4
     i64.shl
     local.set $5
     global.get $assembly/index/modTable
     local.get $3
     local.get $5
     local.set $8
     local.get $2
     local.set $7
     block $break|12
      loop $continue|12
       block $assembly/index/degree|inlined.7 (result i32)
        local.get $8
        local.set $9
        i64.const -9223372036854775808
        local.set $12
        block $break|10
         i32.const 0
         local.set $13
         loop $loop|10
          local.get $13
          i32.const 64
          i32.lt_s
          i32.eqz
          br_if $break|10
          local.get $12
          local.get $9
          i64.and
          i64.const 0
          i64.ne
          if
           i32.const 63
           local.get $13
           i32.sub
           br $assembly/index/degree|inlined.7
          end
          local.get $12
          i64.const 1
          i64.shr_u
          local.set $12
          local.get $13
          i32.const 1
          i32.add
          local.set $13
          br $loop|10
         end
         unreachable
        end
        i32.const -1
       end
       block $assembly/index/degree|inlined.8 (result i32)
        local.get $7
        local.set $11
        i64.const -9223372036854775808
        local.set $12
        block $break|11
         i32.const 0
         local.set $13
         loop $loop|11
          local.get $13
          i32.const 64
          i32.lt_s
          i32.eqz
          br_if $break|11
          local.get $12
          local.get $11
          i64.and
          i64.const 0
          i64.ne
          if
           i32.const 63
           local.get $13
           i32.sub
           br $assembly/index/degree|inlined.8
          end
          local.get $12
          i64.const 1
          i64.shr_u
          local.set $12
          local.get $13
          i32.const 1
          i32.add
          local.set $13
          br $loop|11
         end
         unreachable
        end
        i32.const -1
       end
       i32.sub
       local.tee $6
       i32.const 0
       i32.ge_s
       i32.eqz
       br_if $break|12
       local.get $8
       local.get $7
       local.get $6
       i64.extend_i32_s
       i64.shl
       i64.xor
       local.set $8
       br $continue|12
      end
      unreachable
     end
     local.get $8
     local.get $5
     i64.or
     call $~lib/typedarray/Uint64Array#__uset
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|9
    end
    unreachable
   end
   local.get $1
   call $~lib/rt/stub/__release
   i32.const 1
   global.set $assembly/index/tables_initialized
  end
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  i64.const 0
  i64.store offset=24
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $14
  local.get $14
  i64.const 0
  i64.store offset=32
  local.get $14
  i32.const 0
  i32.store
  local.get $14
  i64.const 0
  i64.store offset=8
  local.get $14
  i64.const 0
  i64.store offset=32
  local.get $14
  call $~lib/rt/stub/__retain
  local.set $13
  i32.const 1
  local.set $10
  local.get $13
  i32.load
  local.set $1
  local.get $13
  i32.load offset=120
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
  local.set $3
  local.get $13
  i32.load offset=120
  local.get $1
  local.get $10
  call $~lib/typedarray/Uint8Array#__set
  local.get $13
  local.get $13
  i64.load offset=32
  global.get $assembly/index/outTable
  local.get $3
  call $~lib/typedarray/Uint64Array#__uget
  i64.xor
  i64.store offset=32
  local.get $13
  local.get $1
  i32.const 1
  i32.add
  global.get $assembly/index/WINDOW_SIZE
  i32.rem_s
  i32.store
  local.get $13
  call $~lib/rt/stub/__retain
  local.set $15
  local.get $10
  local.set $6
  local.get $15
  i64.load offset=32
  local.set $4
  local.get $4
  local.get $15
  i64.load offset=80
  i64.shr_u
  i32.wrap_i64
  local.set $16
  local.get $15
  local.get $4
  i64.const 8
  i64.shl
  local.get $6
  i64.extend_i32_u
  i64.or
  global.get $assembly/index/modTable
  local.get $16
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint64Array#__uget
  i64.xor
  i64.store offset=32
  local.get $15
  call $~lib/rt/stub/__release
  local.get $13
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $assembly/index/Rabin#constructor (; 18 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 124
   i32.const 6
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  i64.const 0
  i64.store offset=24
  local.get $0
  i64.const 0
  i64.store offset=32
  local.get $0
  i64.const 0
  i64.store offset=40
  local.get $0
  i64.const 0
  i64.store offset=48
  local.get $0
  i64.const 0
  i64.store offset=56
  local.get $0
  i64.const 0
  i64.store offset=64
  local.get $0
  i64.const 0
  i64.store offset=72
  local.get $0
  i64.const 0
  i64.store offset=80
  local.get $0
  i64.const 0
  i64.store offset=88
  local.get $0
  i64.const 0
  i64.store offset=96
  local.get $0
  i64.const 0
  i64.store offset=104
  local.get $0
  i64.const 0
  i64.store offset=112
  local.get $0
  i32.const 0
  global.get $assembly/index/WINDOW_SIZE
  call $~lib/typedarray/Uint8Array#constructor
  i32.store offset=120
  local.get $0
  local.get $1
  i64.extend_i32_u
  i64.store offset=88
  local.get $0
  local.get $2
  i64.extend_i32_u
  i64.store offset=96
  local.get $0
  local.get $3
  i64.extend_i32_u
  i64.store offset=104
  local.get $0
  i64.const 1
  local.get $1
  i64.extend_i32_u
  i64.shl
  i64.const 1
  i64.sub
  i64.store offset=112
  local.get $0
  i64.const 17349423945073011
  i64.store offset=64
  local.get $0
  i64.const 53
  i64.store offset=72
  local.get $0
  local.get $0
  i64.load offset=72
  i64.const 8
  i64.sub
  i64.store offset=80
  local.get $0
  call $assembly/index/rabin_init
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#get:length (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/typedarray/Int32Array#__uset (; 20 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $assembly/index/Rabin#fingerprint (; 21 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i64)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.set $3
  local.get $1
  call $~lib/typedarray/Uint8Array#get:length
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  block $break|0
   loop $continue|0
    block $assembly/index/rabin_next_chunk|inlined.0 (result i32)
     local.get $0
     call $~lib/rt/stub/__retain
     local.set $8
     local.get $5
     local.set $7
     local.get $4
     local.set $6
     local.get $8
     i64.load offset=16
     local.set $9
     local.get $8
     i64.load offset=8
     local.set $10
     local.get $8
     i64.load offset=112
     local.set $11
     local.get $8
     i64.load offset=96
     local.set $12
     local.get $8
     i64.load offset=104
     local.set $13
     block $break|1
      i32.const 0
      local.set $14
      loop $loop|1
       local.get $14
       local.get $6
       i32.lt_s
       i32.eqz
       br_if $break|1
       local.get $7
       local.get $14
       i32.add
       i32.load8_u
       local.set $15
       local.get $8
       call $~lib/rt/stub/__retain
       local.set $17
       local.get $15
       local.set $16
       local.get $17
       i32.load
       local.set $18
       local.get $17
       i32.load offset=120
       local.get $18
       call $~lib/typedarray/Uint8Array#__get
       local.set $19
       local.get $17
       i32.load offset=120
       local.get $18
       local.get $16
       call $~lib/typedarray/Uint8Array#__set
       local.get $17
       local.get $17
       i64.load offset=32
       global.get $assembly/index/outTable
       local.get $19
       call $~lib/typedarray/Uint64Array#__uget
       i64.xor
       i64.store offset=32
       local.get $17
       local.get $18
       i32.const 1
       i32.add
       global.get $assembly/index/WINDOW_SIZE
       i32.rem_s
       i32.store
       local.get $17
       call $~lib/rt/stub/__retain
       local.set $21
       local.get $16
       local.set $20
       local.get $21
       i64.load offset=32
       local.set $22
       local.get $22
       local.get $21
       i64.load offset=80
       i64.shr_u
       i32.wrap_i64
       local.set $23
       local.get $21
       local.get $22
       i64.const 8
       i64.shl
       local.get $20
       i64.extend_i32_u
       i64.or
       global.get $assembly/index/modTable
       local.get $23
       i32.const 255
       i32.and
       call $~lib/typedarray/Uint64Array#__uget
       i64.xor
       i64.store offset=32
       local.get $21
       call $~lib/rt/stub/__release
       local.get $17
       call $~lib/rt/stub/__release
       local.get $10
       i64.const 1
       i64.add
       local.set $10
       local.get $9
       i64.const 1
       i64.add
       local.set $9
       local.get $10
       local.get $12
       i64.ge_u
       if (result i32)
        local.get $8
        i64.load offset=32
        local.get $11
        i64.and
        i64.const 0
        i64.eq
       else
        i32.const 0
       end
       if (result i32)
        i32.const 1
       else
        local.get $10
        local.get $13
        i64.ge_u
       end
       if
        local.get $8
        local.get $8
        i64.load offset=24
        i64.store offset=40
        local.get $8
        local.get $10
        i64.store offset=48
        local.get $8
        local.get $8
        i64.load offset=32
        i64.store offset=56
        local.get $8
        local.get $9
        i64.store offset=16
        local.get $8
        local.get $10
        i64.store offset=8
        local.get $8
        call $~lib/rt/stub/__retain
        local.set $20
        local.get $20
        i64.const 0
        i64.store offset=32
        local.get $20
        i32.const 0
        i32.store
        local.get $20
        i64.const 0
        i64.store offset=8
        local.get $20
        i64.const 0
        i64.store offset=32
        local.get $20
        call $~lib/rt/stub/__retain
        local.set $23
        i32.const 1
        local.set $21
        local.get $23
        i32.load
        local.set $19
        local.get $23
        i32.load offset=120
        local.get $19
        call $~lib/typedarray/Uint8Array#__get
        local.set $18
        local.get $23
        i32.load offset=120
        local.get $19
        local.get $21
        call $~lib/typedarray/Uint8Array#__set
        local.get $23
        local.get $23
        i64.load offset=32
        global.get $assembly/index/outTable
        local.get $18
        call $~lib/typedarray/Uint64Array#__uget
        i64.xor
        i64.store offset=32
        local.get $23
        local.get $19
        i32.const 1
        i32.add
        global.get $assembly/index/WINDOW_SIZE
        i32.rem_s
        i32.store
        local.get $23
        call $~lib/rt/stub/__retain
        local.set $17
        local.get $21
        local.set $16
        local.get $17
        i64.load offset=32
        local.set $22
        local.get $22
        local.get $17
        i64.load offset=80
        i64.shr_u
        i32.wrap_i64
        local.set $24
        local.get $17
        local.get $22
        i64.const 8
        i64.shl
        local.get $16
        i64.extend_i32_u
        i64.or
        global.get $assembly/index/modTable
        local.get $24
        i32.const 255
        i32.and
        call $~lib/typedarray/Uint64Array#__uget
        i64.xor
        i64.store offset=32
        local.get $17
        call $~lib/rt/stub/__release
        local.get $23
        call $~lib/rt/stub/__release
        local.get $20
        call $~lib/rt/stub/__release
        local.get $8
        i32.load offset=120
        i32.load offset=4
        i32.const 0
        global.get $assembly/index/WINDOW_SIZE
        i32.const 1
        i32.mul
        call $~lib/memory/memory.fill
        local.get $14
        i32.const 1
        i32.add
        local.set $20
        local.get $8
        call $~lib/rt/stub/__release
        local.get $20
        br $assembly/index/rabin_next_chunk|inlined.0
       end
       local.get $14
       i32.const 1
       i32.add
       local.set $14
       br $loop|1
      end
      unreachable
     end
     local.get $8
     local.get $9
     i64.store offset=16
     local.get $8
     local.get $10
     i64.store offset=8
     i32.const -1
     local.set $15
     local.get $8
     call $~lib/rt/stub/__release
     local.get $15
    end
    local.set $25
    local.get $25
    i32.const 0
    i32.lt_s
    if
     br $break|0
    end
    local.get $4
    local.get $25
    i32.sub
    local.set $4
    local.get $5
    local.get $25
    i32.add
    local.set $5
    local.get $2
    local.get $3
    i32.const 1
    i32.add
    local.tee $3
    local.get $0
    i64.load offset=48
    i32.wrap_i64
    call $~lib/typedarray/Int32Array#__uset
    br $continue|0
   end
   unreachable
  end
  local.get $2
  local.set $8
  local.get $1
  call $~lib/rt/stub/__release
  local.get $8
 )
 (func $start (; 22 ;) (type $FUNCSIG$v)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  call $start:assembly/index
 )
 (func $null (; 23 ;) (type $FUNCSIG$v)
 )
 (func $Rabin#get:wpos (; 24 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $Rabin#set:wpos (; 25 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $Rabin#get:count (; 26 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=8
 )
 (func $Rabin#set:count (; 27 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=8
 )
 (func $Rabin#get:pos (; 28 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=16
 )
 (func $Rabin#set:pos (; 29 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=16
 )
 (func $Rabin#get:start (; 30 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=24
 )
 (func $Rabin#set:start (; 31 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=24
 )
 (func $Rabin#get:digest (; 32 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=32
 )
 (func $Rabin#set:digest (; 33 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=32
 )
 (func $Rabin#get:chunk_start (; 34 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=40
 )
 (func $Rabin#set:chunk_start (; 35 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=40
 )
 (func $Rabin#get:chunk_length (; 36 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=48
 )
 (func $Rabin#set:chunk_length (; 37 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=48
 )
 (func $Rabin#get:chunk_cut_fingerprint (; 38 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=56
 )
 (func $Rabin#set:chunk_cut_fingerprint (; 39 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=56
 )
 (func $Rabin#get:polynomial (; 40 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=64
 )
 (func $Rabin#set:polynomial (; 41 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=64
 )
 (func $Rabin#get:polynomial_degree (; 42 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=72
 )
 (func $Rabin#set:polynomial_degree (; 43 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=72
 )
 (func $Rabin#get:polynomial_shift (; 44 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=80
 )
 (func $Rabin#set:polynomial_shift (; 45 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=80
 )
 (func $Rabin#get:average_bits (; 46 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=88
 )
 (func $Rabin#set:average_bits (; 47 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=88
 )
 (func $Rabin#get:minsize (; 48 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=96
 )
 (func $Rabin#set:minsize (; 49 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=96
 )
 (func $Rabin#get:maxsize (; 50 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=104
 )
 (func $Rabin#set:maxsize (; 51 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=104
 )
 (func $Rabin#get:mask (; 52 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=112
 )
 (func $Rabin#set:mask (; 53 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=112
 )
 (func $Rabin#get:window (; 54 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=120
  call $~lib/rt/stub/__retain
 )
 (func $Rabin#set:window (; 55 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $0
  local.get $0
  i32.load offset=120
  local.tee $1
  i32.ne
  if
   local.get $0
   call $~lib/rt/stub/__retain
   drop
   local.get $1
   call $~lib/rt/stub/__release
  end
  local.get $0
  i32.store offset=120
 )
)
