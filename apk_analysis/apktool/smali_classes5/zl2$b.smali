.class public final Lzl2$b;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.desktop.DesktopInteractor"
    f = "DesktopInteractor.kt"
    l = {
        0x11
    }
    m = "emit"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzl2;->b([Lzl2$a;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public l:[Ljava/lang/Object;

.field public m:I

.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lzl2;

.field public q:I


# direct methods
.method public constructor <init>(Lzl2;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzl2;",
            "Le02<",
            "-",
            "Lzl2$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lzl2$b;->p:Lzl2;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lzl2$b;->o:Ljava/lang/Object;

    iget p1, p0, Lzl2$b;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lzl2$b;->q:I

    iget-object p1, p0, Lzl2$b;->p:Lzl2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lzl2;->b([Lzl2$a;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
