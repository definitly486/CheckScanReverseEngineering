.class public final Lio/appmetrica/analytics/impl/ld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/common/ModuleSelfReporter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ek;

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/B1;->a()Lio/appmetrica/analytics/impl/ek;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ld;->a:Lio/appmetrica/analytics/impl/ek;

    const/4 v0, 0x4

    iput v0, p0, Lio/appmetrica/analytics/impl/ld;->b:I

    return-void
.end method


# virtual methods
.method public final reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ld;->a:Lio/appmetrica/analytics/impl/ek;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/ek;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ld;->a:Lio/appmetrica/analytics/impl/ek;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lio/appmetrica/analytics/impl/Cj;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/Cj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V

    return-void
.end method

.method public final reportEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ld;->a:Lio/appmetrica/analytics/impl/ek;

    .line 42
    invoke-static {p1}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p3}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withValue(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    new-instance p2, Lio/appmetrica/analytics/impl/Sj;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/impl/Sj;-><init>(Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ld;->a:Lio/appmetrica/analytics/impl/ek;

    iget p0, p0, Lio/appmetrica/analytics/impl/ld;->b:I

    invoke-static {p0}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance p1, Lio/appmetrica/analytics/impl/Sj;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/Sj;-><init>(Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ld;->a:Lio/appmetrica/analytics/impl/ek;

    .line 35
    iget p0, p0, Lio/appmetrica/analytics/impl/ld;->b:I

    invoke-static {p0}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 36
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 37
    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withValue(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    new-instance p1, Lio/appmetrica/analytics/impl/Sj;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/Sj;-><init>(Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ld;->a:Lio/appmetrica/analytics/impl/ek;

    iget p0, p0, Lio/appmetrica/analytics/impl/ld;->b:I

    invoke-static {p0}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withAttributes(Ljava/util/Map;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lio/appmetrica/analytics/impl/Sj;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/Sj;-><init>(Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V

    return-void
.end method
