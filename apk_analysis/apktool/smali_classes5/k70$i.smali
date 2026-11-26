.class public final Lk70$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk70$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static final a:Lk70$i;

.field public static final b:Lk70$b$a;

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk70$i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lk70$i;->a:Lk70$i;

    sget-object v0, Lk70$b$a;->NOT_SUPPORTED:Lk70$b$a;

    sput-object v0, Lk70$i;->b:Lk70$b$a;

    const v0, 0x7fffffff

    sput v0, Lk70$i;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lhk9;
    .locals 1

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Can not cast not supported block to WithdrawalViewModel"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()I
    .locals 0

    sget p0, Lk70$i;->c:I

    return p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType()Lk70$b$a;
    .locals 0

    sget-object p0, Lk70$i;->b:Lk70$b$a;

    return-object p0
.end method
