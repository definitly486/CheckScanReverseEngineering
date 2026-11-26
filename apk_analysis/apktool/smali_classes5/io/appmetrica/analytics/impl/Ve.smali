.class public final Lio/appmetrica/analytics/impl/Ve;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Z9;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Z9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Z9;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)Lio/appmetrica/analytics/impl/co;
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails;->getExceptionClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails;->getStacktrace()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails;->getPlatform()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails;->getVirtualMachineVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails;->getPluginEnvironment()Ljava/util/Map;

    move-result-object v10

    iget-object v4, v0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Z9;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/Z9;->b:Lio/appmetrica/analytics/impl/kn;

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/Ki;->a()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Z9;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Z9;->c:Lio/appmetrica/analytics/impl/j3;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ki;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/plugins/StackTraceItem;

    new-instance v13, Lio/appmetrica/analytics/impl/Tl;

    invoke-virtual {v4}, Lio/appmetrica/analytics/plugins/StackTraceItem;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lio/appmetrica/analytics/plugins/StackTraceItem;->getFileName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Lio/appmetrica/analytics/plugins/StackTraceItem;->getLine()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual {v4}, Lio/appmetrica/analytics/plugins/StackTraceItem;->getColumn()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual {v4}, Lio/appmetrica/analytics/plugins/StackTraceItem;->getMethodName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-direct/range {v13 .. v19}, Lio/appmetrica/analytics/impl/Tl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    new-instance v0, Lio/appmetrica/analytics/impl/Un;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/Un;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lio/appmetrica/analytics/impl/Un;Ljava/util/ArrayList;)V

    new-instance v4, Lio/appmetrica/analytics/impl/co;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-direct/range {v4 .. v12}, Lio/appmetrica/analytics/impl/co;-><init>(Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/Y;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v4
.end method
