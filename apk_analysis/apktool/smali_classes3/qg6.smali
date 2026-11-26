.class public final synthetic Lqg6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/work/impl/Processor;

.field public final synthetic c:Landroidx/work/impl/model/WorkGenerationalId;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/Processor;Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqg6;->b:Landroidx/work/impl/Processor;

    iput-object p2, p0, Lqg6;->c:Landroidx/work/impl/model/WorkGenerationalId;

    iput-boolean p3, p0, Lqg6;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lqg6;->c:Landroidx/work/impl/model/WorkGenerationalId;

    iget-boolean v1, p0, Lqg6;->d:Z

    iget-object p0, p0, Lqg6;->b:Landroidx/work/impl/Processor;

    invoke-static {p0, v0, v1}, Landroidx/work/impl/Processor;->b(Landroidx/work/impl/Processor;Landroidx/work/impl/model/WorkGenerationalId;Z)V

    return-void
.end method
