.class public final Lkd$s0$b$a;
.super Lkd$s0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$s0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lkd$s0$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$s0$b$a;

    const-string v1, "Clicks"

    invoke-direct {v0, v1}, Lkd$s0$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkd$s0$b$a;->e:Lkd$s0$b$a;

    return-void
.end method
