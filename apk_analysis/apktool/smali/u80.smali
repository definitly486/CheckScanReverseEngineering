.class public final Lu80;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu80$a;
    }
.end annotation


# static fields
.field public static final a:Lu80$a;

.field public static volatile b:Lu80;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu80$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu80;->a:Lu80$a;

    return-void
.end method
