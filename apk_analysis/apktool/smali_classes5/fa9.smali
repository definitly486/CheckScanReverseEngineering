.class public final Lfa9;
.super Ld0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa9$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld0<",
        "Lda9;",
        "Lf44;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lyx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyx0<",
            "Lea9;",
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
            "Lea9;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa9;->a:Lyx0;

    return-void
.end method


# virtual methods
.method public final b()Lyx0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyx0<",
            "Lea9;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lfa9;->a:Lyx0;

    return-object p0
.end method

.method public final c()Lm02;
    .locals 0

    sget-object p0, Lha9;->d:Lf44;

    return-object p0
.end method

.method public final d(Lm02;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lf44;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lf44;->a()Lda9;

    move-result-object p0

    return-object p0
.end method
