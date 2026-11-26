.class public final synthetic Lp3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/nm;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lyads/nm;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3a;->b:Lyads/nm;

    iput p2, p0, Lp3a;->c:I

    iput-wide p3, p0, Lp3a;->d:J

    iput-wide p5, p0, Lp3a;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-wide v2, p0, Lp3a;->d:J

    iget-wide v4, p0, Lp3a;->e:J

    iget-object v0, p0, Lp3a;->b:Lyads/nm;

    iget v1, p0, Lp3a;->c:I

    invoke-virtual/range {v0 .. v5}, Lyads/nm;->a(IJJ)V

    return-void
.end method
