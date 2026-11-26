.class public final enum Lq99$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq99;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq99$b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq99$b;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lup7;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lq99$b;

.field private static final $cachedSerializer$delegate:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Ldf4<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum Approved:Lq99$b;

.field public static final enum Attached:Lq99$b;

.field public static final Companion:Lq99$b$b;

.field public static final enum Pending:Lq99$b;

.field public static final enum Rejected:Lq99$b;

.field public static final enum UnknownNeedsUpdate:Lq99$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lq99$b;

    const-string v1, "Approved"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq99$b;->Approved:Lq99$b;

    new-instance v1, Lq99$b;

    const-string v2, "Attached"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq99$b;->Attached:Lq99$b;

    new-instance v2, Lq99$b;

    const-string v3, "Pending"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lq99$b;->Pending:Lq99$b;

    new-instance v3, Lq99$b;

    const-string v4, "Rejected"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lq99$b;->Rejected:Lq99$b;

    new-instance v4, Lq99$b;

    const-string v5, "UnknownNeedsUpdate"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lq99$b;->UnknownNeedsUpdate:Lq99$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Lq99$b;

    move-result-object v0

    sput-object v0, Lq99$b;->$VALUES:[Lq99$b;

    new-instance v0, Lq99$b$b;

    invoke-direct {v0}, Lq99$b$b;-><init>()V

    sput-object v0, Lq99$b;->Companion:Lq99$b$b;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    sget-object v1, Lq99$b$a;->f:Lq99$b$a;

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    sput-object v0, Lq99$b;->$cachedSerializer$delegate:Lcl4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a()Lcl4;
    .locals 1

    sget-object v0, Lq99$b;->$cachedSerializer$delegate:Lcl4;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lq99$b;
    .locals 1

    const-class v0, Lq99$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq99$b;

    return-object p0
.end method

.method public static values()[Lq99$b;
    .locals 1

    sget-object v0, Lq99$b;->$VALUES:[Lq99$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq99$b;

    return-object v0
.end method
