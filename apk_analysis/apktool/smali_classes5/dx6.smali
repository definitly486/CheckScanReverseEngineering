.class public abstract Ldx6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldx6$a;
    }
.end annotation


# static fields
.field public static final b:Ldx6$a;

.field public static final c:Lj1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldx6$a;

    invoke-direct {v0}, Ldx6;-><init>()V

    sput-object v0, Ldx6;->b:Ldx6$a;

    sget-object v0, Lf96;->a:Lcb4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcb4$a;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lk53;

    invoke-direct {v0}, Lk53;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ll96;

    invoke-direct {v0}, Ldx6;-><init>()V

    :goto_1
    sput-object v0, Ldx6;->c:Lj1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method
