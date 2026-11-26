.class public final Lbo0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbo0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbo0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lbo0$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbo0$a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbo0$a$a;->a:Lbo0$a$a;

    return-void
.end method
