.class public final Lic8$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic8;-><init>(Ltc8;Ljf6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lic8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lic8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lic8$a;->f:Lic8$a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;

    const-string v0, "#3085FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;-><init>(II)V

    return-object p0
.end method
