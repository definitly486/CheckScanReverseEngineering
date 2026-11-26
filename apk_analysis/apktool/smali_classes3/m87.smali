.class public final synthetic Lm87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Landroidx/navigation/serialization/RouteBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Landroidx/navigation/serialization/RouteBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm87;->b:Ljava/util/Map;

    iput-object p2, p0, Lm87;->c:Landroidx/navigation/serialization/RouteBuilder;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroidx/navigation/NavType;

    iget-object v0, p0, Lm87;->b:Ljava/util/Map;

    iget-object p0, p0, Lm87;->c:Landroidx/navigation/serialization/RouteBuilder;

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/navigation/serialization/RouteSerializerKt;->a(Ljava/util/Map;Landroidx/navigation/serialization/RouteBuilder;ILjava/lang/String;Landroidx/navigation/NavType;)Lj59;

    move-result-object p0

    return-object p0
.end method
