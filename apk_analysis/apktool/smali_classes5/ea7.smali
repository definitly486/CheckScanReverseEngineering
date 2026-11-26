.class public final Lea7;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Lze7;",
        "Li36;",
        "Lcom/google/gson/Gson;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lea7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lea7;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lea7;->f:Lea7;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lws3;

    invoke-direct {p0}, Lws3;-><init>()V

    new-instance p1, Lcom/warefly/checkscan/data/network/deserializers/SSEDataDeserializer;

    invoke-direct {p1}, Lcom/warefly/checkscan/data/network/deserializers/SSEDataDeserializer;-><init>()V

    iget-object p2, p1, Lcom/warefly/checkscan/data/network/deserializers/SSEDataDeserializer;->b:Ljava/util/HashMap;

    const-string v0, "UpdateBonuses"

    const-class v1, Lpa7;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UpdateBalance"

    const-class v1, Loa7;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UpdateTransferShowcase"

    const-class v1, Lta7;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UpdateTasks"

    const-class v1, Lra7;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UpdateProfileIcon"

    const-class v1, Lqa7;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UpdateTransferPoints"

    const-class v1, Lsa7;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UpdateSignInState"

    const-class v1, Lw97;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lj59;->a:Lj59;

    const-class p2, Ly97;

    invoke-virtual {p0, p2, p1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1, p0}, Lcom/google/gson/Gson;-><init>(Lws3;)V

    return-object p1
.end method
