.class public final Lkd$j$b$h;
.super Lkd$j$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final e:Lkd$j$b$h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkd$j$b$h;

    const-string v1, "Created"

    sget-object v2, Lp46;->d:Lp46;

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkd$j$b;-><init>(Ljava/util/Map;)V

    sput-object v0, Lkd$j$b$h;->e:Lkd$j$b$h;

    return-void
.end method
