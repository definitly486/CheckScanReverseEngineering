.class final Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InfoBundle"
.end annotation


# instance fields
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private template:Landroidx/camera/camera2/pipe/RequestTemplate;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;",
            "Landroidx/camera/camera2/pipe/RequestTemplate;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 44
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    .line 45
    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    .line 46
    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;ILjh2;)V
    .locals 6

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    new-instance p1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_3

    const/4 p4, 0x0

    :cond_3
    move-object v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Ljh2;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Ljh2;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;)V

    return-void
.end method

.method public static synthetic copy-0am55g4$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;ILjava/lang/Object;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->copy-0am55g4(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    return-object p0
.end method

.method public final component2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    return-object p0
.end method

.method public final component3()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    return-object p0
.end method

.method public final component4-ejQnlcg()Landroidx/camera/camera2/pipe/RequestTemplate;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    return-object p0
.end method

.method public final copy-0am55g4(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;",
            "Landroidx/camera/camera2/pipe/RequestTemplate;",
            ")",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Ljh2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    iget-object v3, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    iget-object v3, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    iget-object p1, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getListeners()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    return-object p0
.end method

.method public final getOptions()Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    return-object p0
.end method

.method public final getTags()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    return-object p0
.end method

.method public final getTemplate-ejQnlcg()Landroidx/camera/camera2/pipe/RequestTemplate;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    invoke-static {v2, v0, v1}, Lk;->c(Ljava/util/Map;II)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/RequestTemplate;->unbox-impl()I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/RequestTemplate;->hashCode-impl(I)I

    move-result p0

    :goto_0
    add-int/2addr v2, p0

    return v2
.end method

.method public final setTemplate-xlOpshk(Landroidx/camera/camera2/pipe/RequestTemplate;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InfoBundle(options="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
