.class public final Lyads/lx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/w80;


# instance fields
.field public final a:Lyads/w80;


# direct methods
.method public constructor <init>(Lyads/w80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lx;->a:Lyads/w80;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ja5;)V
    .locals 0

    iget-object p0, p0, Lyads/lx;->a:Lyads/w80;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lyads/w80;->a(Lyads/ja5;)V

    :cond_0
    return-void
.end method

.method public final onAdFailedToLoad(Lyads/m4;)V
    .locals 0

    iget-object p0, p0, Lyads/lx;->a:Lyads/w80;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lyads/w80;->onAdFailedToLoad(Lyads/m4;)V

    :cond_0
    return-void
.end method
