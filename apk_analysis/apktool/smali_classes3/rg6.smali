.class public final synthetic Lrg6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroidx/work/impl/Processor;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/Processor;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrg6;->b:Landroidx/work/impl/Processor;

    iput-object p2, p0, Lrg6;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lrg6;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lrg6;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lrg6;->d:Ljava/lang/String;

    iget-object p0, p0, Lrg6;->b:Landroidx/work/impl/Processor;

    invoke-static {p0, v0, v1}, Landroidx/work/impl/Processor;->a(Landroidx/work/impl/Processor;Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object p0

    return-object p0
.end method
