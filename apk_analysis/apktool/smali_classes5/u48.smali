.class public final enum Lu48;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu48;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lu48;

.field public static final enum Date:Lu48;

.field public static final enum Period:Lu48;

.field public static final enum Search:Lu48;

.field public static final enum Sum:Lu48;


# instance fields
.field private final isDate:Z

.field private isSelect:Z

.field private titleSort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lu48;

    const-string v1, "\u041f\u043e \u0434\u0430\u0442\u0435 \u043f\u043e\u043a\u0443\u043f\u043a\u0438"

    const/4 v2, 0x0

    const-string v3, "Date"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lu48;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lu48;->Date:Lu48;

    new-instance v1, Lu48;

    const-string v3, "Search"

    const-string v5, "\u041f\u043e\u0438\u0441\u043a"

    invoke-direct {v1, v4, v3, v5, v2}, Lu48;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v1, Lu48;->Search:Lu48;

    new-instance v3, Lu48;

    const/4 v4, 0x2

    const-string v5, "\u041f\u0435\u0440\u0438\u043e\u0434"

    const-string v6, "Period"

    invoke-direct {v3, v4, v6, v5, v2}, Lu48;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v3, Lu48;->Period:Lu48;

    new-instance v4, Lu48;

    const/4 v5, 0x3

    const-string v6, "\u0421\u0443\u043c\u043c\u0430"

    const-string v7, "Sum"

    invoke-direct {v4, v5, v7, v6, v2}, Lu48;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v4, Lu48;->Sum:Lu48;

    filled-new-array {v0, v1, v3, v4}, [Lu48;

    move-result-object v0

    sput-object v0, Lu48;->$VALUES:[Lu48;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p4, p0, Lu48;->isDate:Z

    iput-object p3, p0, Lu48;->titleSort:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu48;->isSelect:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu48;
    .locals 1

    const-class v0, Lu48;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu48;

    return-object p0
.end method

.method public static values()[Lu48;
    .locals 1

    sget-object v0, Lu48;->$VALUES:[Lu48;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu48;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu48;->titleSort:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lu48;->isSelect:Z

    return p0
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lu48;->isSelect:Z

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lu48;->titleSort:Ljava/lang/String;

    return-void
.end method
