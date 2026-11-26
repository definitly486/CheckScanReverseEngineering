.class public final Lkv5;
.super Lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkv5$b;,
        Lkv5$a;
    }
.end annotation


# static fields
.field public static final r:Lbu0;


# instance fields
.field public final j:Lra5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lra5<",
            "**>;"
        }
    .end annotation
.end field

.field public final k:Ljava/lang/String;

.field public final l:Lg88;

.field public final m:Ljava/lang/String;

.field public final n:Lkv5$b;

.field public final o:Lkv5$a;

.field public final p:Lio/grpc/a;

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbu0;

    invoke-direct {v0}, Lbu0;-><init>()V

    sput-object v0, Lkv5;->r:Lbu0;

    return-void
.end method

.method public constructor <init>(Lra5;Lla5;Lj13;Llv5;Li06;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lg88;Lg39;Lio/grpc/b;)V
    .locals 10

    new-instance v1, Lx65;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lx65;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v6}, Lt;-><init>(Lx65;Lg88;Lg39;Lla5;Lio/grpc/b;Z)V

    new-instance v1, Lkv5$a;

    invoke-direct {v1, p0}, Lkv5$a;-><init>(Lkv5;)V

    iput-object v1, p0, Lkv5;->o:Lkv5$a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lkv5;->q:Z

    iput-object v2, p0, Lkv5;->l:Lg88;

    iput-object p1, p0, Lkv5;->j:Lra5;

    move-object/from16 v1, p9

    iput-object v1, p0, Lkv5;->m:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, p0, Lkv5;->k:Ljava/lang/String;

    iget-object v3, p4, Llv5;->w:Lio/grpc/a;

    iput-object v3, p0, Lkv5;->p:Lio/grpc/a;

    new-instance v0, Lkv5$b;

    iget-object v3, p1, Lra5;->b:Ljava/lang/String;

    move-object v1, p0

    move-object v5, p3

    move-object v7, p4

    move-object v6, p5

    move-object/from16 v4, p6

    move/from16 v8, p8

    move-object/from16 v9, p13

    move-object v3, v2

    move/from16 v2, p7

    invoke-direct/range {v0 .. v9}, Lkv5$b;-><init>(Lkv5;ILg88;Ljava/lang/Object;Lj13;Li06;Llv5;ILio/grpc/b;)V

    move-object v1, v0

    iput-object v1, p0, Lkv5;->n:Lkv5$b;

    return-void
.end method


# virtual methods
.method public final n()Lt1$a;
    .locals 0

    iget-object p0, p0, Lkv5;->n:Lkv5$b;

    return-object p0
.end method

.method public final o()Lkv5$a;
    .locals 0

    iget-object p0, p0, Lkv5;->o:Lkv5$a;

    return-object p0
.end method

.method public final q()Lkv5$b;
    .locals 0

    iget-object p0, p0, Lkv5;->n:Lkv5$b;

    return-object p0
.end method
