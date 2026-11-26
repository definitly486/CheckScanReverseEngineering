.class public final Ldq5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldq5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldq5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ldq5$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldq5$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldq5$b;->a:Ldq5$b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    const-string p0, "expected an Int value"

    return-object p0
.end method
