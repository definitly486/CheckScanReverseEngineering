.class public final Lyads/i13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/c13;


# instance fields
.field public final a:Lyads/rr3;

.field public final b:Lyads/m2;


# direct methods
.method public constructor <init>(Lyads/rr3;Lyads/m2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/i13;->a:Lyads/rr3;

    iput-object p2, p0, Lyads/i13;->b:Lyads/m2;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lyads/i13;->a:Lyads/rr3;

    invoke-virtual {v0}, Lyads/rr3;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/i13;->b:Lyads/m2;

    invoke-virtual {p0}, Lyads/m2;->e()V

    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lyads/i13;->a:Lyads/rr3;

    invoke-virtual {p0}, Lyads/rr3;->b()V

    return-void
.end method
