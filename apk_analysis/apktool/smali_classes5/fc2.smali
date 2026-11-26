.class public final Lfc2;
.super Ld0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfc2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld0<",
        "Lrb2;",
        "Lec2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lyx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyx0<",
            "Lec2;",
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
            "Lec2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfc2;->a:Lyx0;

    return-void
.end method


# virtual methods
.method public final b()Lyx0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyx0<",
            "Lec2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lfc2;->a:Lyx0;

    return-object p0
.end method

.method public final c()Lm02;
    .locals 0

    sget-object p0, Lgc2;->a:Lec2;

    return-object p0
.end method

.method public final d(Lm02;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lec2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lrb2;

    invoke-direct {p0, p1}, Lrb2;-><init>(Lec2;)V

    return-object p0
.end method
