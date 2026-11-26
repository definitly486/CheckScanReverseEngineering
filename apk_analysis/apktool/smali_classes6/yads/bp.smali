.class public abstract Lyads/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nz;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/d9;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/d9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bp;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/bp;->b:Lyads/d9;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract b()V
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lyads/bp;->b()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method
