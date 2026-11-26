.class public final Lyads/ti4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ut4;


# instance fields
.field public final synthetic a:Lyads/vi4;


# direct methods
.method public constructor <init>(Lyads/vi4;)V
    .locals 0

    iput-object p1, p0, Lyads/ti4;->a:Lyads/vi4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lyads/ti4;->a:Lyads/vi4;

    iget-object v0, p0, Lyads/vi4;->b:Lyads/m15;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/m15;->a()V

    :cond_0
    iget-object p0, p0, Lyads/vi4;->a:Lyads/b4;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/b4;->b()V

    :cond_1
    return-void
.end method
