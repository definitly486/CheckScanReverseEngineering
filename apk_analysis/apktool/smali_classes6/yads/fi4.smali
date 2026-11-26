.class public final Lyads/fi4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nl4;


# instance fields
.field public final a:Lyads/el4;

.field public b:Lyads/gd6;


# direct methods
.method public constructor <init>(Lyads/el4;Lyads/gd6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/fi4;->a:Lyads/el4;

    iput-object p2, p0, Lyads/fi4;->b:Lyads/gd6;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lyads/fi4;->b:Lyads/gd6;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyads/gd6;->onVideoComplete()V

    :cond_0
    return-void
.end method
