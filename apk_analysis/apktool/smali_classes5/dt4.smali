.class public final Ldt4;
.super Ld0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldt4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld0<",
        "Lct4;",
        "Lb44;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lyx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyx0<",
            "Lk92;",
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
            "-",
            "Lk92;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldt4;->a:Lyx0;

    return-void
.end method


# virtual methods
.method public final b()Lyx0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyx0<",
            "Lk92;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ldt4;->a:Lyx0;

    return-object p0
.end method

.method public final c()Lm02;
    .locals 0

    sget-object p0, Lft4;->c:Lb44;

    return-object p0
.end method

.method public final d(Lm02;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb44;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lb44;->c()Lct4;

    move-result-object p0

    return-object p0
.end method
