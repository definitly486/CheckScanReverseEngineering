.class public final Lyads/ui4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tx5;


# instance fields
.field public final a:J

.field public final synthetic b:Lyads/vi4;


# direct methods
.method public constructor <init>(Lyads/vi4;J)V
    .locals 0

    iput-object p1, p0, Lyads/ui4;->b:Lyads/vi4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lyads/ui4;->a:J

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 2

    iget-object p3, p0, Lyads/ui4;->b:Lyads/vi4;

    iget-object p3, p3, Lyads/vi4;->b:Lyads/m15;

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lyads/ui4;->a:J

    sub-long p0, v0, p1

    invoke-interface {p3, v0, v1, p0, p1}, Lyads/m15;->a(JJ)V

    :cond_0
    return-void
.end method
