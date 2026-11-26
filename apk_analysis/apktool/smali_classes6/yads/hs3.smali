.class public final Lyads/hs3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ja4;


# instance fields
.field public final synthetic a:Lyads/ks3;


# direct methods
.method public constructor <init>(Lyads/ks3;)V
    .locals 0

    iput-object p1, p0, Lyads/hs3;->a:Lyads/ks3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lyads/hs3;->a:Lyads/ks3;

    iget-object p0, p0, Lyads/ks3;->i:Lyads/b4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/b4;->b()V

    :cond_0
    return-void
.end method
