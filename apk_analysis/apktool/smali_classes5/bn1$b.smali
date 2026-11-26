.class public final Lbn1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbn1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lbn1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbn1$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbn1$b;->a:Lbn1$b;

    return-void
.end method


# virtual methods
.method public final a(Lea5$a;)Ljava/io/OutputStream;
    .locals 0

    return-object p1
.end method

.method public final b(Ley6$a;)Ljava/io/InputStream;
    .locals 0

    return-object p1
.end method

.method public final getMessageEncoding()Ljava/lang/String;
    .locals 0

    const-string p0, "identity"

    return-object p0
.end method
