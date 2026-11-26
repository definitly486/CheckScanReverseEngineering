.class public final Lyads/v36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n36;


# instance fields
.field public final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lyads/v36;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/v36;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 3
    instance-of p0, p1, Landroid/net/Uri;

    return p0
.end method
