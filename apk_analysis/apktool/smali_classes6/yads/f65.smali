.class public final Lyads/f65;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/j93;

.field public final b:Lyads/j93;

.field public final c:Lyads/j93;

.field public final d:Lyads/j93;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lyads/j93;->a:Lyads/i93;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/i93;->c:Lyads/j93;

    sget-object v1, Lyads/i93;->b:Lyads/j93;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/f65;->a:Lyads/j93;

    iput-object v0, p0, Lyads/f65;->b:Lyads/j93;

    iput-object v0, p0, Lyads/f65;->c:Lyads/j93;

    iput-object v1, p0, Lyads/f65;->d:Lyads/j93;

    return-void
.end method
