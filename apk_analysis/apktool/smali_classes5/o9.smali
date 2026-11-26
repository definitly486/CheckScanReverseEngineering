.class public final synthetic Lo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Lx9;

.field public final synthetic b:J

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lx9;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo9;->a:Lx9;

    iput-wide p2, p0, Lo9;->b:J

    iput-boolean p4, p0, Lo9;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo9;->a:Lx9;

    iget-object v0, v0, Lx9;->c:Lbm0;

    iget-object v0, v0, Lbm0;->d:Ln53;

    iget-wide v1, p0, Lo9;->b:J

    long-to-int v1, v1

    iget-boolean p0, p0, Lo9;->c:Z

    invoke-interface {v0, v1, p0}, Ln53;->b(IZ)V

    return-void
.end method
