.class public final Lde2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Lze7;",
        "Li36;",
        "Ljava/util/List<",
        "+",
        "Lhe2;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lde2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lde2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lde2;->f:Lde2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 59

    move-object/from16 v0, p1

    check-cast v0, Lze7;

    move-object/from16 v1, p2

    check-cast v1, Li36;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lrq0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Llr6;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lp58;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lf63;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ly71;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lxx5;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lyx5;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ln9;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lho0;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v10, Ll32;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Le61;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    new-instance v12, Ljz5;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    new-instance v13, Lnd1;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    new-instance v14, Lz80;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v15, Lj62;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    move-object/from16 p0, v1

    new-instance v1, Lj19;

    const-class v16, Ljf6;

    move-object/from16 p1, v2

    invoke-static/range {v16 .. v16}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    move-object/from16 p2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljf6;

    invoke-direct {v1, v2}, Lj19;-><init>(Ljf6;)V

    new-instance v2, Lk19;

    move-object/from16 v17, v1

    invoke-static/range {v16 .. v16}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljf6;

    invoke-direct {v2, v1}, Lk19;-><init>(Ljf6;)V

    new-instance v1, Lnx7;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v18, Lsd7;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    new-instance v19, Lu01;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    new-instance v20, Lxv6;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    new-instance v21, Llp5;

    invoke-direct/range {v21 .. v21}, Ljava/lang/Object;-><init>()V

    new-instance v22, Lk37;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Object;-><init>()V

    new-instance v23, Lal6;

    invoke-direct/range {v23 .. v23}, Ljava/lang/Object;-><init>()V

    new-instance v24, Lnh1;

    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    new-instance v25, Lo99;

    invoke-direct/range {v25 .. v25}, Ljava/lang/Object;-><init>()V

    new-instance v26, Lbw2;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Object;-><init>()V

    new-instance v27, Lhh9;

    invoke-direct/range {v27 .. v27}, Ljava/lang/Object;-><init>()V

    new-instance v28, Ly95;

    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    new-instance v29, Lky5;

    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    new-instance v30, Lpi4;

    invoke-direct/range {v30 .. v30}, Ljava/lang/Object;-><init>()V

    new-instance v31, Llc8;

    invoke-direct/range {v31 .. v31}, Ljava/lang/Object;-><init>()V

    new-instance v32, Lb74;

    invoke-direct/range {v32 .. v32}, Ljava/lang/Object;-><init>()V

    new-instance v33, Lxc1;

    invoke-direct/range {v33 .. v33}, Ljava/lang/Object;-><init>()V

    new-instance v34, Lpm1;

    invoke-direct/range {v34 .. v34}, Ljava/lang/Object;-><init>()V

    new-instance v35, Lj;

    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    new-instance v36, Lt8;

    invoke-direct/range {v36 .. v36}, Ljava/lang/Object;-><init>()V

    new-instance v37, Lj90;

    invoke-direct/range {v37 .. v37}, Ljava/lang/Object;-><init>()V

    new-instance v38, Lwo8;

    invoke-direct/range {v38 .. v38}, Ljava/lang/Object;-><init>()V

    new-instance v39, Lt72;

    invoke-direct/range {v39 .. v39}, Ljava/lang/Object;-><init>()V

    new-instance v40, Lsm8;

    invoke-direct/range {v40 .. v40}, Ljava/lang/Object;-><init>()V

    new-instance v41, Luo8;

    invoke-direct/range {v41 .. v41}, Ljava/lang/Object;-><init>()V

    new-instance v42, Lin8;

    invoke-direct/range {v42 .. v42}, Ljava/lang/Object;-><init>()V

    new-instance v43, Lao8;

    invoke-direct/range {v43 .. v43}, Ljava/lang/Object;-><init>()V

    new-instance v44, Lto8;

    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    new-instance v45, Ldy8;

    invoke-direct/range {v45 .. v45}, Ljava/lang/Object;-><init>()V

    new-instance v46, Lwx5;

    invoke-direct/range {v46 .. v46}, Ljava/lang/Object;-><init>()V

    new-instance v47, Lxt5;

    invoke-direct/range {v47 .. v47}, Ljava/lang/Object;-><init>()V

    new-instance v48, Lfa3;

    invoke-direct/range {v48 .. v48}, Ljava/lang/Object;-><init>()V

    new-instance v49, Lfq3;

    invoke-direct/range {v49 .. v49}, Ljava/lang/Object;-><init>()V

    new-instance v50, Ldr1;

    invoke-direct/range {v50 .. v50}, Ljava/lang/Object;-><init>()V

    new-instance v51, Lgm8;

    invoke-direct/range {v51 .. v51}, Ljava/lang/Object;-><init>()V

    new-instance v52, Lxi6;

    invoke-direct/range {v52 .. v52}, Ljava/lang/Object;-><init>()V

    move-object/from16 v53, v1

    new-instance v1, Ltn3;

    move-object/from16 v54, v2

    invoke-static/range {v16 .. v16}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v3}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljf6;

    invoke-direct {v1, v0}, Ltn3;-><init>(Ljf6;)V

    new-instance v0, Lrj6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lej6;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljk6;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v16, Lim8;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    new-instance v55, Lla0;

    invoke-direct/range {v55 .. v55}, Ljava/lang/Object;-><init>()V

    new-instance v56, Lte8;

    invoke-direct/range {v56 .. v56}, Ljava/lang/Object;-><init>()V

    move-object/from16 v57, v0

    const/16 v0, 0x3c

    new-array v0, v0, [Lhe2;

    const/16 v58, 0x0

    aput-object p0, v0, v58

    const/16 v58, 0x1

    aput-object p1, v0, v58

    const/16 v58, 0x2

    aput-object p2, v0, v58

    const/16 v58, 0x3

    aput-object v4, v0, v58

    const/4 v4, 0x4

    aput-object v5, v0, v4

    const/4 v4, 0x5

    aput-object v6, v0, v4

    const/4 v4, 0x6

    aput-object v7, v0, v4

    const/4 v4, 0x7

    aput-object v8, v0, v4

    const/16 v4, 0x8

    aput-object v9, v0, v4

    const/16 v4, 0x9

    aput-object v10, v0, v4

    const/16 v4, 0xa

    aput-object v11, v0, v4

    const/16 v4, 0xb

    aput-object v12, v0, v4

    const/16 v4, 0xc

    aput-object v13, v0, v4

    const/16 v4, 0xd

    aput-object v14, v0, v4

    const/16 v4, 0xe

    aput-object v15, v0, v4

    const/16 v4, 0xf

    aput-object v17, v0, v4

    const/16 v4, 0x10

    aput-object v54, v0, v4

    const/16 v4, 0x11

    aput-object v53, v0, v4

    const/16 v4, 0x12

    aput-object v18, v0, v4

    const/16 v4, 0x13

    aput-object v19, v0, v4

    const/16 v4, 0x14

    aput-object v20, v0, v4

    const/16 v4, 0x15

    aput-object v21, v0, v4

    const/16 v4, 0x16

    aput-object v22, v0, v4

    const/16 v4, 0x17

    aput-object v23, v0, v4

    const/16 v4, 0x18

    aput-object v24, v0, v4

    const/16 v4, 0x19

    aput-object v25, v0, v4

    const/16 v4, 0x1a

    aput-object v26, v0, v4

    const/16 v4, 0x1b

    aput-object v27, v0, v4

    const/16 v4, 0x1c

    aput-object v28, v0, v4

    const/16 v4, 0x1d

    aput-object v29, v0, v4

    const/16 v4, 0x1e

    aput-object v30, v0, v4

    const/16 v4, 0x1f

    aput-object v31, v0, v4

    const/16 v4, 0x20

    aput-object v32, v0, v4

    const/16 v4, 0x21

    aput-object v33, v0, v4

    const/16 v4, 0x22

    aput-object v34, v0, v4

    const/16 v4, 0x23

    aput-object v35, v0, v4

    const/16 v4, 0x24

    aput-object v36, v0, v4

    const/16 v4, 0x25

    aput-object v37, v0, v4

    const/16 v4, 0x26

    aput-object v38, v0, v4

    const/16 v4, 0x27

    aput-object v39, v0, v4

    const/16 v4, 0x28

    aput-object v40, v0, v4

    const/16 v4, 0x29

    aput-object v41, v0, v4

    const/16 v4, 0x2a

    aput-object v42, v0, v4

    const/16 v4, 0x2b

    aput-object v43, v0, v4

    const/16 v4, 0x2c

    aput-object v44, v0, v4

    const/16 v4, 0x2d

    aput-object v45, v0, v4

    const/16 v4, 0x2e

    aput-object v46, v0, v4

    const/16 v4, 0x2f

    aput-object v47, v0, v4

    const/16 v4, 0x30

    aput-object v48, v0, v4

    const/16 v4, 0x31

    aput-object v49, v0, v4

    const/16 v4, 0x32

    aput-object v50, v0, v4

    const/16 v4, 0x33

    aput-object v51, v0, v4

    const/16 v4, 0x34

    aput-object v52, v0, v4

    const/16 v4, 0x35

    aput-object v1, v0, v4

    const/16 v1, 0x36

    aput-object v57, v0, v1

    const/16 v1, 0x37

    aput-object v2, v0, v1

    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    aput-object v16, v0, v1

    const/16 v1, 0x3a

    aput-object v55, v0, v1

    const/16 v1, 0x3b

    aput-object v56, v0, v1

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
