.class public final Lyads/gl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/x85;


# instance fields
.field public final synthetic a:Lyads/hl2;

.field public final synthetic b:Lc31;


# direct methods
.method public constructor <init>(Lyads/hl2;Lc31;)V
    .locals 0

    iput-object p1, p0, Lyads/gl2;->a:Lyads/hl2;

    iput-object p2, p0, Lyads/gl2;->b:Lc31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/hi6;)V
    .locals 0

    iget-object p1, p0, Lyads/gl2;->a:Lyads/hl2;

    iget-object p0, p0, Lyads/gl2;->b:Lc31;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lno5;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
