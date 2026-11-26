.class public final Lov3;
.super Lm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lov3$a;
    }
.end annotation


# instance fields
.field public final a:Lnv3;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnv3;

    invoke-direct {v0}, Lnv3;-><init>()V

    iput-object v0, p0, Lov3;->a:Lnv3;

    iput p1, v0, Lnv3;->f:I

    iput-object p2, p0, Lov3;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d()Lpj0;
    .locals 0

    iget-object p0, p0, Lov3;->a:Lnv3;

    return-object p0
.end method

.method public final f(Ldq2;)Lrj0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(Ll54;)V
    .locals 1

    iget-object v0, p0, Lov3;->b:Ljava/lang/String;

    iget-object p0, p0, Lov3;->a:Lnv3;

    invoke-interface {p1, v0, p0}, Ll54;->a(Ljava/lang/String;Lzn5;)V

    return-void
.end method
