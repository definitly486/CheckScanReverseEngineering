.class public final synthetic Lj9a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/sn;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lyads/sn;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj9a;->b:Lyads/sn;

    iput p2, p0, Lj9a;->c:I

    iput-wide p3, p0, Lj9a;->d:J

    iput-wide p5, p0, Lj9a;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-wide v2, p0, Lj9a;->d:J

    iget-wide v4, p0, Lj9a;->e:J

    iget-object v0, p0, Lj9a;->b:Lyads/sn;

    iget v1, p0, Lj9a;->c:I

    invoke-static/range {v0 .. v5}, Lyads/tn;->a(Lyads/sn;IJJ)V

    return-void
.end method
