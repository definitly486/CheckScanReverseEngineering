.class public final synthetic Ldc9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Vd;

.field public final synthetic b:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/Vd;Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldc9;->a:Lio/appmetrica/analytics/impl/Vd;

    iput-object p2, p0, Ldc9;->b:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;

    return-void
.end method


# virtual methods
.method public final consume(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ldc9;->b:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;

    check-cast p1, Ljava/io/File;

    iget-object p0, p0, Ldc9;->a:Lio/appmetrica/analytics/impl/Vd;

    invoke-static {p0, v0, p1}, Lio/appmetrica/analytics/impl/Vd;->a(Lio/appmetrica/analytics/impl/Vd;Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;Ljava/io/File;)V

    return-void
.end method
