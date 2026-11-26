.class public final synthetic Ln87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ldf4;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ldf4;ILjava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln87;->b:Ldf4;

    iput p2, p0, Ln87;->c:I

    iput-object p3, p0, Ln87;->d:Ljava/util/Map;

    iput-object p4, p0, Ln87;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ln87;->e:Ljava/lang/String;

    check-cast p1, Landroidx/navigation/NavArgumentBuilder;

    iget-object v1, p0, Ln87;->b:Ldf4;

    iget v2, p0, Ln87;->c:I

    iget-object p0, p0, Ln87;->d:Ljava/util/Map;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/navigation/serialization/RouteSerializerKt;->c(Ldf4;ILjava/util/Map;Ljava/lang/String;Landroidx/navigation/NavArgumentBuilder;)Lj59;

    move-result-object p0

    return-object p0
.end method
