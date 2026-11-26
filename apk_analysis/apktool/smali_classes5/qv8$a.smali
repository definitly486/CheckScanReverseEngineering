.class public final Lqv8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqv8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqv8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqv8$a$a;
    }
.end annotation


# static fields
.field public static final a:Lqv8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqv8$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqv8$a;->a:Lqv8$a;

    return-void
.end method


# virtual methods
.method public final a()Lqv8$a$a;
    .locals 2

    invoke-static {}, Ldd5;->b()J

    move-result-wide v0

    new-instance p0, Lqv8$a$a;

    invoke-direct {p0, v0, v1}, Lqv8$a$a;-><init>(J)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    sget p0, Ldd5;->b:I

    const-string p0, "TimeSource(System.nanoTime())"

    return-object p0
.end method
