.class public final enum Lya4$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lya4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lya4$c;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lya4$c;

.field public static final enum INSTANCE:Lya4$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lya4$c;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lya4$c;->INSTANCE:Lya4$c;

    filled-new-array {v0}, [Lya4$c;

    move-result-object v0

    sput-object v0, Lya4$c;->$VALUES:[Lya4$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lya4$c;
    .locals 1

    const-class v0, Lya4$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lya4$c;

    return-object p0
.end method

.method public static values()[Lya4$c;
    .locals 1

    sget-object v0, Lya4$c;->$VALUES:[Lya4$c;

    invoke-virtual {v0}, [Lya4$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lya4$c;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcn1;->c(Z)V

    return-void
.end method
