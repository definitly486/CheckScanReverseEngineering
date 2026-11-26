.class public final synthetic La36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La36;->b:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    iput-object p2, p0, La36;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, La36;->c:Ljava/lang/Object;

    instance-of v2, v1, Lk57$a;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, La36;->b:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->c:Z

    iget v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
