.class public final Lq99$b$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq99$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ldf4<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lq99$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq99$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lq99$b$a;->f:Lq99$b$a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lq99$b;->values()[Lq99$b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ll03;

    const-string v1, "com.warefly.checkscan.domain.entities.balance.UserBankCard.CardStatus"

    invoke-direct {v0, v1, p0}, Ll03;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0
.end method
