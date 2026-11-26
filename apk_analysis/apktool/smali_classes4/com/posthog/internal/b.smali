.class public final enum Lcom/posthog/internal/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/internal/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/internal/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lcom/posthog/internal/b;

.field public static final enum COHORT:Lcom/posthog/internal/b;

.field public static final Companion:Lcom/posthog/internal/b$a;

.field public static final enum FLAG:Lcom/posthog/internal/b;

.field public static final enum PERSON:Lcom/posthog/internal/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/posthog/internal/b;

    const-string v1, "COHORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/posthog/internal/b;->COHORT:Lcom/posthog/internal/b;

    new-instance v1, Lcom/posthog/internal/b;

    const-string v2, "FLAG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/posthog/internal/b;->FLAG:Lcom/posthog/internal/b;

    new-instance v2, Lcom/posthog/internal/b;

    const-string v3, "PERSON"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/posthog/internal/b;->PERSON:Lcom/posthog/internal/b;

    filled-new-array {v0, v1, v2}, [Lcom/posthog/internal/b;

    move-result-object v0

    sput-object v0, Lcom/posthog/internal/b;->$VALUES:[Lcom/posthog/internal/b;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lcom/posthog/internal/b;->$ENTRIES:Lg03;

    new-instance v0, Lcom/posthog/internal/b$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/posthog/internal/b;->Companion:Lcom/posthog/internal/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/internal/b;
    .locals 1

    const-class v0, Lcom/posthog/internal/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/internal/b;

    return-object p0
.end method

.method public static values()[Lcom/posthog/internal/b;
    .locals 1

    sget-object v0, Lcom/posthog/internal/b;->$VALUES:[Lcom/posthog/internal/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/internal/b;

    return-object v0
.end method
