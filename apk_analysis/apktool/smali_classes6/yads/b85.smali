.class public final Lyads/b85;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/d85;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lyads/b85;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/r75;)Z
    .locals 0

    iget-object p1, p1, Lyads/r75;->q:Ljava/lang/Object;

    iget-object p0, p0, Lyads/b85;->a:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
