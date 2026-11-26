.class public final Lyads/wo4;
.super Lyads/ny2;
.source "SourceFile"


# static fields
.field public static final a:Lyads/wo4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/wo4;

    invoke-direct {v0}, Lyads/wo4;-><init>()V

    sput-object v0, Lyads/wo4;->a:Lyads/wo4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/ny2;-><init>()V

    return-void
.end method

.method public static a(Lyads/q66;F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set variable value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NumberValueProperty"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/u66;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyads/q66;

    invoke-virtual {p1}, Lyads/u66;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
