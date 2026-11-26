.class public final Lio/appmetrica/analytics/impl/O0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public final b:Lio/appmetrica/analytics/impl/C0;

.field public final c:Lio/appmetrica/analytics/impl/ef;

.field public final d:Lio/appmetrica/analytics/impl/hf;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->g()Lio/appmetrica/analytics/impl/f4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/O0;->a:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v0, Lio/appmetrica/analytics/impl/C0;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/C0;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/O0;->b:Lio/appmetrica/analytics/impl/C0;

    new-instance v1, Lio/appmetrica/analytics/impl/ef;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/ef;-><init>(Lio/appmetrica/analytics/impl/C0;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/O0;->c:Lio/appmetrica/analytics/impl/ef;

    new-instance v0, Lio/appmetrica/analytics/impl/hf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/hf;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/O0;->d:Lio/appmetrica/analytics/impl/hf;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/O0;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O0;->b:Lio/appmetrica/analytics/impl/C0;

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    sget-object p0, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    .line 86
    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qa;->i()Lio/appmetrica/analytics/impl/yc;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->a:Lio/appmetrica/analytics/impl/Wa;

    .line 89
    invoke-interface {p0}, Lio/appmetrica/analytics/IReporter;->getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/plugins/IPluginReporter;->reportUnhandledException(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/O0;Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O0;->b:Lio/appmetrica/analytics/impl/C0;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    sget-object p0, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    .line 68
    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qa;->i()Lio/appmetrica/analytics/impl/yc;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->a:Lio/appmetrica/analytics/impl/Wa;

    .line 71
    invoke-interface {p0}, Lio/appmetrica/analytics/IReporter;->getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/plugins/IPluginReporter;->reportError(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/O0;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O0;->b:Lio/appmetrica/analytics/impl/C0;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    sget-object p0, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    .line 77
    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qa;->i()Lio/appmetrica/analytics/impl/yc;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->a:Lio/appmetrica/analytics/impl/Wa;

    .line 80
    invoke-interface {p0}, Lio/appmetrica/analytics/IReporter;->getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/plugins/IPluginReporter;->reportError(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O0;->c:Lio/appmetrica/analytics/impl/ef;

    .line 52
    iget-object v1, v0, Lio/appmetrica/analytics/impl/ef;->a:Lio/appmetrica/analytics/impl/i;

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    .line 54
    iget-object v0, v0, Lio/appmetrica/analytics/impl/ef;->b:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    .line 55
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O0;->d:Lio/appmetrica/analytics/impl/hf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O0;->a:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, La2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, La2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/O0;->c:Lio/appmetrica/analytics/impl/ef;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/ef;->a:Lio/appmetrica/analytics/impl/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/ef;->b:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ef;->d:Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyCollectionValidator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails;->getStacktrace()Ljava/util/List;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyCollectionValidator;->validate(Ljava/util/Collection;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O0;->d:Lio/appmetrica/analytics/impl/hf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/O0;->a:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Liq5;

    invoke-direct {v1, p0, p1, p2}, Liq5;-><init>(Lio/appmetrica/analytics/impl/O0;Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O0;->c:Lio/appmetrica/analytics/impl/ef;

    .line 58
    iget-object v1, v0, Lio/appmetrica/analytics/impl/ef;->a:Lio/appmetrica/analytics/impl/i;

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    .line 60
    iget-object v0, v0, Lio/appmetrica/analytics/impl/ef;->c:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    .line 61
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O0;->d:Lio/appmetrica/analytics/impl/hf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O0;->a:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Ljq5;

    invoke-direct {v1, p0, p1, p2, p3}, Ljq5;-><init>(Lio/appmetrica/analytics/impl/O0;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
