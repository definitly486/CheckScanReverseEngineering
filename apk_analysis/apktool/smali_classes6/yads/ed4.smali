.class public final Lyads/ed4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/fd4;


# direct methods
.method public constructor <init>(Lyads/fd4;)V
    .locals 0

    iput-object p1, p0, Lyads/ed4;->a:Lyads/fd4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lyads/gd4;
    .locals 2

    iget-object p0, p0, Lyads/ed4;->a:Lyads/fd4;

    invoke-virtual {p0}, Lyads/fd4;->b()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lyads/dd4;

    invoke-direct {v0}, Lyads/dd4;-><init>()V

    new-instance v1, Lyads/gd4;

    invoke-direct {v1, p0, v0}, Lyads/gd4;-><init>(Ljava/util/Map;Lyads/dd4;)V

    return-object v1
.end method
