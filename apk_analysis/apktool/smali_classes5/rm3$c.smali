.class public final Lrm3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrm3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "T4:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lxl3<",
        "[",
        "Ljava/lang/Object;",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lea;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lea;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrm3$c;->b:Lea;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    const/4 v3, 0x3

    aget-object p1, p1, v3

    iget-object p0, p0, Lrm3$c;->b:Lea;

    iget-object p0, p0, Lea;->b:Ljava/lang/Object;

    check-cast p0, Lbm0$f;

    invoke-virtual {p0, v0, v1, v2, p1}, Lbm0$f;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const-string p0, "Array of size 4 expected but got "

    array-length p1, p1

    invoke-static {p1, p0}, Ljn;->f(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
