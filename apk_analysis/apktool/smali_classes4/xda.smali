.class public final Lxda;
.super Ljia;
.source "SourceFile"


# instance fields
.field public final X:Lev9;

.field public final Y:Ljava/util/ArrayList;

.field public Z:Lkha;

.field public a0:Ljia;

.field public b0:Lh14;

.field public c0:Ljava/lang/String;

.field public d0:Z

.field public e0:Z

.field public f0:I


# direct methods
.method public constructor <init>(Lpp9;)V
    .locals 0

    invoke-direct {p0, p1}, Ljia;-><init>(Lpp9;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxda;->d0:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lxda;->e0:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lxda;->Y:Ljava/util/ArrayList;

    invoke-static {}, Lev9;->a()Lev9;

    move-result-object p1

    iput-object p1, p0, Lxda;->X:Lev9;

    return-void
.end method


# virtual methods
.method public final k()Z
    .locals 1

    iget-object v0, p0, Lxda;->Z:Lkha;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lxda;->d0:Z

    return p0
.end method
