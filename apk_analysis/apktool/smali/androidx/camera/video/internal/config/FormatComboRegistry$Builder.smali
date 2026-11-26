.class public final Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/config/FormatComboRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;
    }
.end annotation


# instance fields
.field private final formatComboMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroidx/camera/video/internal/config/FormatCombo;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->formatComboMapping:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/camera/video/internal/config/FormatComboRegistry;
    .locals 2

    new-instance v0, Landroidx/camera/video/internal/config/FormatComboRegistry;

    iget-object p0, p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->formatComboMapping:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry;-><init>(Ljava/util/Map;Ljh2;)V

    return-object v0
.end method

.method public final container(ILnl3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->formatComboMapping:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v1, Ljava/util/Map;

    new-instance p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;

    invoke-direct {p0, p1, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;-><init>(ILjava/util/Map;)V

    invoke-interface {p2, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
