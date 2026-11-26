.class public final Ltz4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltz4$c;
    }
.end annotation


# static fields
.field public static final b:Ltz4$a;


# instance fields
.field public final a:Ltz4$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltz4$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltz4;->b:Ltz4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Ltz4$c;

    :try_start_0
    const-string v1, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lga5;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Ltz4;->b:Ltz4$a;

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Lga5;

    sget-object v3, Lcp3;->a:Lcp3;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Ltz4$c;->a:[Lga5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Ltz4;->a:Ltz4$c;

    return-void
.end method
