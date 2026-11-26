.class public final Lyads/fs3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mq4;


# instance fields
.field public final synthetic a:Lyads/ks3;


# direct methods
.method public constructor <init>(Lyads/ks3;)V
    .locals 0

    iput-object p1, p0, Lyads/fs3;->a:Lyads/ks3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lyads/fs3;->a:Lyads/ks3;

    iget-object p0, p0, Lyads/ks3;->h:Lyads/m2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyads/m2;->e()V

    :cond_0
    return-void
.end method
