.class Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/ConnectionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrapperFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/ComponentName;Landroid/os/IBinder;)Landroidx/browser/trusted/TrustedWebActivityServiceConnection;
    .locals 0

    new-instance p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnection;

    invoke-static {p2}, Lyz3$a;->asInterface(Landroid/os/IBinder;)Lyz3;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection;-><init>(Lyz3;Landroid/content/ComponentName;)V

    return-object p0
.end method
