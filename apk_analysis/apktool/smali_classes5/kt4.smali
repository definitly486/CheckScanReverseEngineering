.class public final Lkt4;
.super Ld0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkt4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld0<",
        "Ljt4;",
        "Lc44;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lyx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyx0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyx0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyx0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkt4;->a:Lyx0;

    return-void
.end method


# virtual methods
.method public final b()Lyx0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyx0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lkt4;->a:Lyx0;

    return-object p0
.end method

.method public final c()Lm02;
    .locals 0

    sget-object p0, Lot4;->b:Lc44;

    return-object p0
.end method

.method public final d(Lm02;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lc44;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljt4;

    iget-object v0, p1, Lc44;->a:Lb44;

    invoke-virtual {v0}, Lb44;->c()Lct4;

    move-result-object v0

    iget-object p1, p1, Lc44;->b:Ld44;

    invoke-virtual {p1}, Ld44;->c()Lut4;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljt4;-><init>(Lct4;Lut4;)V

    return-object p0
.end method
