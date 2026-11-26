.class public final Lyads/gd6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/rd6;


# instance fields
.field public final a:Lyads/aw3;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyads/ee5;->a:Lyads/ng3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/ng3;->a()Lyads/aw3;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/gd6;->a:Lyads/aw3;

    return-void
.end method

.method public static final a(Lyads/gd6;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final onVideoComplete()V
    .locals 3

    iget-object v0, p0, Lyads/gd6;->a:Lyads/aw3;

    new-instance v1, Lh51;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lh51;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method
