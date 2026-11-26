.class public final Lyads/nx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/w80;


# instance fields
.field public final synthetic a:Lyads/yp;


# direct methods
.method public constructor <init>(Lyads/yp;)V
    .locals 0

    iput-object p1, p0, Lyads/nx;->a:Lyads/yp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ja5;)V
    .locals 1

    iget-object p0, p0, Lyads/nx;->a:Lyads/yp;

    new-instance v0, Lyads/k70;

    invoke-direct {v0, p1}, Lyads/k70;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lyads/yp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onAdFailedToLoad(Lyads/m4;)V
    .locals 1

    iget-object p0, p0, Lyads/nx;->a:Lyads/yp;

    new-instance v0, Lyads/j70;

    invoke-direct {v0, p1}, Lyads/j70;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lyads/yp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
